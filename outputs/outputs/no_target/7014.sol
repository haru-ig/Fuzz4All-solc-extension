pragma solidity ^0.8.0;
uint256 public constant N1 = Test.func();
contract Burnable {
    mapping(address => uint) storage Burns;
    constructor () {
        Burns[msg.sender] += 1;
    }
    function burn(uint value) public {
        if(Burns[msg.sender] >= value) {
            Burns[msg.sender] -= value;
        } else {
            assert(false);
        }
    }
}
contract Test {
    function func() public pure returns (uint256) {
        return 10 ** 16;
    }
}

contract TestContract {
    Burnable contract;
    constructor () public {
        contract = Burnable(address(0));
    }
    function func() public returns (uint256) {
        return contract.func();
    }
    function emitEvent() public {
        contract.burn(1);
        contract.burn(20);
    }
    function () external payable {}
}
