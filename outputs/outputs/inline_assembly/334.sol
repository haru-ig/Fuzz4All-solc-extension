pragma solidity ^0.8.0;
contract F1 {
    function add(uint a, uint b) public view returns (uint){
        return (a + b);
    }
    function add(uint a, uint b) public pure returns (uint){
        return (1e18 / (a + b));
    }
}

pragma solidity ^0.8.0;
contract F1 {
    function add(uint a, uint b) public view returns (uint){
        return (a + b);
    }
    function divide(uint a, uint b) public view returns (uint){
        return (1e18 / b);
    }
    function divide(uint a, uint b) public pure returns (uint){
        return (a / ((1e18 / b)));
    }
}

pragma solidity ^0.8.0;
contract F1 {
    function divide(uint a, uint b) public view returns (uint){
        return (a / b);
    }
    function divide(uint a, uint b) public pure returns (uint){
        return (a / ((a + b)));
    }
}
