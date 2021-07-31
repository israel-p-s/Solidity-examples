pragma solidity ^0.4.17;

contract Contador {
    
    // Variable contador
    uint256 count;
    
    // Inicializador del smart contract
    function Contador(uint256 _count) public {
        count = _count;
    }
    
    // Setter de la variable
    function setCount(uint256 _count) public {
        count = _count;
    }
    
    // Aumenta en 1 la variable
    function incrementCount() public {
        count += 1;
    }
    
    // Devuelve el valor de la variable
    function getCount() public view returns (uint256) {
        return count;
    }
    
    // Devuelve 34
    function getNumber() public pure returns (uint256) {
        return 34;
    }
    
}
