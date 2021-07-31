pragma solidity ^0.4.17;

contract Banco {
    
    // Inicializador del smart contract
    function Banco() payable public {
        
    }
    
    // Enviar saldo a una dirección
    function incrementBalance(uint256 amount) payable public {
        require(msg.value == amount);
    }
    
    // Recibir y actualizar saldo a la dirección
    function getBalance() public {
        msg.sender.transfer(address(this).balance);
    }
}
