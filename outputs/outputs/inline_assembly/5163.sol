pragma solidity ^0.8.0;
contract C {
    function checkCounter(address payable payee) external view returns (uint) {
        return _checkCounter(payee);
    }
    function _checkCounter(address payable payee) internal returns (uint);
}
pragma solidity ^0.8.0;
contract C {
    constructor(address payable payee) payable public {
    }
    function _checkCounter(address payable payee) internal returns (uint) {
        return (uint(payee)>1? 0 : 1);
    }
}
pragma solidity ^0.8.0;
contract C {
    constructor(uint x) public payable {
    }
    function _checkCounter(uint x) internal pure returns (uint) {
        return (uint(x)>1? 0 : 1);
    }
}
