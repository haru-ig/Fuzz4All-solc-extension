pragma solidity ^0.8.0;
contract F1_without_inline_assembly{
    function add_internal(uint a, uint b) public pure returns (uint) {
        uint x = a ^ b;
        return x;
    }
}
pragma solidity ^0.8.0;
contract F2_with_inline_assembly{
    function add_internal (uint a, uint b) public pure returns(uint) {
        inline_assembly {

            return a ^ b;
        }
    }
}

pragma solidity ^0.8.0;
contract Test1 {
    function test1() public{

        (uint a, uint b) = f1();
        uint x = a ^ b;
        assert(x == a ^ b);
        assert(F0.add_internal(a, b) == a);
    }
    function test2() public{
        (uint, uint) = F1_without_inline_assembly.add_internal;

        assert(F1_without_inline_assembly.add_internal(1, 2) == 3);
        assert(F0.add_internal(1, 3) == 2);
    }
    function test3() public {
        uint a = 2;
        uint b = 3;

        a = a + b;
    }
    function test4() public {
        F1_without_inline_assembly.add_internal(1, 6);
    }

}

pragma solidity ^0.8.0;
contract Test2 {
    function test1() public {

        (uint, uint) = inline_assembly {

            return (a, b);
        }
    }
}
 pragma solidity ^0.8.0;
contract Test3 {
    function test1() public pure returns (uint, uint) {

        (uint, uint) x = (1, 2);
        uint a = x.msg.sender.call{ value: 1 }("");
        uint b = a.call{ value: 4 }("");
        uint x_add_a = x.add(a);
        return (x_add_a, x_add_a + 1);
    }
}
