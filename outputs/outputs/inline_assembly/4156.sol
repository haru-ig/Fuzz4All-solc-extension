pragma solidity ^0.8.0;
contract Mutators {
    address _foo;
    constructor () {
        _foo = msg.sender;
    }
    function set_foo(address new_foo) public {
        _foo = new_foo;
    }
    function test() public {

        test_4();
        mutators_modifier(test());
    }
    function mutators_modifier(uint8 code, ) private pure returns (uint256, uint256) {
       return (8, 255);
    }
}

pragma solidity ^0.8.0;
contract Mutators {
    uint8 private constant MUTATION_DEPTH = 1;
    address _foo = 0x53885d64857E94f8E8f747b817A566C22E3b333a;
    constructor () {


        set_foo(_foo);
    }
    function set_foo(address new_foo) public {
        _foo = new_foo;
    }
    function test() public {

        test_4();
        mutators_modifier(test());
    }
    function mutators_modifier(uint8 code, ) private pure returns (uint256, uint256) {
       switch(code) {
           case 0:
                return (2, 9);
           case 255:
                return (-5, -32);
       }
    }
}
