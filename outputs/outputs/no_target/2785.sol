pragma solidity ^0.8.0;
contract new1602{
    function test()public{
    }
}
pragma solidity ^0.4.24;
contract new161{
    constructor()public{
    }
    event test(uint a);
    function calltest()public{
        test(20);
    }
}

pragma solidity ^0.8.0;
contract new162{
    constructor()public{
    }
    event test(uint a);
    function calltest()public{
        test(50);

        uint x;
        asm{
            x := 50
        }

        test(x);
    }
}

pragma solidity ^0.8.0;
contract new163{
    constructor()public{
    }
    function test()public{
        uint[10] mInts;

        uint[32][12] m32;
        uint[32]{10}[32] m32a;
        uint[5] m255;

        mInts[4] = 168;
        mInts[0] = 0;
        mInts[1] = 255;

        m32[0] = 255;

        m255 = 255;
    }
}

pragma solidity ^0.4.24;
contract new164{
    constructor()public{
    }
    event test(uint a);
    function calltest()public{
        (bool _true, uint x, uint _y) = (false, 500, 500);
        if(_true){
            (x, y) = (123, 123);
        }

        (bool _x, uint _y) = (false, 500);
    }
}
contract new165{
    function g()public{
        if(block.difficulty>0) {


            uint x = 4;
        }
    }
    function h()public pure{
        (uint x, uint y) = (4,4);
    }
    function i()public pure{
        (uint x,, uint y) = (4,4,4);
        (, uint y, uint z) = (4,4,4);
        (,,, uint z) = (4,4,4);
