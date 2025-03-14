pragma solidity ^0.8.0;
contract InlineAssemblyMutated {
    function testMethod() public pure returns(bytes32) {
        bytes32 t1;
        bytes32 x;
        uint16 _uint;


        (t1,x) = generate(0);


        (t1,x,t1) = generate(x);


        (t1,x,t1,x) = generate(t1, x);


        (_uint, _uint) = generate(_uint, _uint);


        (,_uint, _uint, t1) = generate(t1, t1, t1);

        return t1;
    }

    function generate(bytes32 _x) internal pure returns (bytes32, bytes32) {
        bytes32 x = x + _x;
        bytes32 t1 = x + x;
        return (t1, x);
    }
}
