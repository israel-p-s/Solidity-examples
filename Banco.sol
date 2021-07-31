pragma solidity ^0.4.17;

contract Banco {
    
    // Variable de estado
    address owner;
    
    // Modificador que comprueba que ejecuta el owner
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    // Modificar el owner
    function newOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }
    
    function getOwner () view public returns (address) {
        return owner;
    }
    
    function getBalance() view public returns(uint256) {
        return address(this).balance;
    }
    
    // Inicializador del smart contract
    function Banco() payable public {
        owner = msg.sender;
    }
    
    // Enviar saldo a una dirección
    function incrementBalance(uint256 amount) payable public {
        require(msg.value == amount);
    }
    
    // Recibir saldo a la dirección
    function withdrawBalance() public onlyOwner {
        msg.sender.transfer(address(this).balance);
    }
}
