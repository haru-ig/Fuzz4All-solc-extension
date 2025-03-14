pragma solidity ^0.8.0;
contract ImmutableBc6 {
    uint public variableA = 0;
    function test() pure public returns (uint[1] memory) {
        uint[1] memory var1;
        assembly{
            var1 := 32
        }
        return var1;
    }
}


pragma solidity ^0.8.0;
contract ImmutableBc7 {
    uint public variableA = 0;
    function test() pure public returns (uint[1] memory) {
        uint[1] memory var1;
        assembly{
            var1 := 32
        }
        return var1;
    }
}


pragma solidity ^0.8.0;
contract ImmutableBc8 {
    uint public variableA = 0;
    bool private constant flag = true;
    function test() pure public returns (bool) {
        uint[1] memory var1;
        assembly{
            if flag {
                var1 := 32
            }
        }
        return var1;
    }
}


pragma solidity ^0.8.0;
contract ImmutableBc9 {
    uint public variableA = 0;
    uint internal constant flag1 = 1;
    uint private constant flag2 = 2;
    function constant() pure public returns (uint) {
        const uint flag3 = 3;
        uint memory var1;
        assembly {
            if flag1 {
                var1 := flag3
            }


        }
        return var1;
    }

    function nonconstant() pure public returns (uint) {
        uint memory var1;
        assembly {
            if flag2 {
                var1 := flag2
            }


        }
        return var1;
    }



    function constant2() pure public returns (uint) {
        uint internal constant var1 = 1;
        uint var2;
        assembly {
            var2 := var1
        }
        return var2;
    }

    function nonconstant2() pure public returns (uint) {
        uint internal constant var1 = 1;
        uint var2;
        assembly {
            var1 := true


        }
        return var2;
    }
}
