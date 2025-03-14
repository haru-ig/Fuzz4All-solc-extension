pragma solidity ^0.8.0;
contract CallerExample16 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        return y - x;
    }
    function subtractAgain(uint x, uint y) public pure returns (uint z) {
        x = 2 * x;
    }
}

pragma solidity ^0.8.0;
contract CallerExample17 {
    uint _totalSupply;
    uint public _balanceEther;

   address public _contract;
   uint _someVariable;
    function __init__(uint _initial) {
        _totalSupply = _initial;
    }
    function __init__() {
        _balanceEther = 0;
        _contract = 0x9816ef6F2E9003656804f9664f50A4570e676C98;
    }

    constructor(uint _initial) {
        _totalSupply = _initial;
    }

    modifier private() {
        if(msg.value!= 0) {
            _balanceEther += msg.value;
        }
        _;
    }
    function() external payable private {
        _balanceEther += msg.value;
    }
    function totalSupply() public view returns (uint) {
        return _totalSupply;
    }
    function accountBalanceEther() public view private returns (uint) {
        return _balanceEther;
    }
    function callSomeFunction() public returns (uint) {
        return CallerExample1.subtract(_someVariable,_totalSupply);
    }
    function callSomeFunctionAgain() public returns (uint) {
        return CallerExample17.totalSupply();
    }
}
