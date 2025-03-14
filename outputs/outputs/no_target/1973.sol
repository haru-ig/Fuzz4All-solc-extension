pragma solidity ^0.8.0;
contract NotMutatedSematic {
    uint x;
    function f() public {
        x = 1;
    }
}
contract OverwrittenSematic {
    uint x;
    function f() public {
        x += 1;
    }
}
contract NotOverwrittenSematic {
    uint x;
    function f() public {
        x+= 1;
    }
}
contract OverwrittenSematicWithoutConversion {
    uint x;
    uint y;
    function f() public {
        uint z = uint(-1);
        x -= x+1;
        x%= z;
    }
}
contract NotOverwrittenSematicWithoutConversion {
    uint x;
    uint y;
    function f() public {
        uint z = uint(-1);
        x -= x+1;
        x%=z;
    }
}
contract OverwrittenSematicWithoutConversion2 {
    uint x;
    uint y;
    function f() public {
        uint z = uint(-1);
        x -= 1;
        x%= z;
    }
}
contract NotOverwrittenSematicWithoutConversion2 {
    uint x;
    uint y;
    function f() public {
        uint z = uint(-1);
        x -= 1;
        x%=z;
    }
}
contract OverwrittenSematicWithCheckedArithmetic {
    uint x;
    uint y;
    function f() public {
        uint z = uint(-2);
        x -= 5;
        x%=z;
    }
}
contract NotOverwrittenSematicWithCheckedArithmetic {
    uint x;
    uint y;
    function f() public {
        uint z = uint(-2);
        x -= 5;
        x%=z;
    }
}
contract OverwrittenSematicWithUnwrappedCheckedArithmetic {
    uint x;
    uint y;
    uint z;
    function f() public {
        uint w = uint(-6);
        uint t = 6**((2**257)-2);
        x-=2;
        x%=z;
        x+=(x-1);
        x&=(1-t);
        x%=(x-w);
    }
}
contract NotOverwrittenSematicWithUnwrappedCheckedArithmetic {
    uint x;
    uint y;
    uint z;
    function f() public {
        uint w = uint(-6);
        uint t = 6**((2**257)-2);
        x-=2;
        x%=z;
        x+=(x-1);
        x&=(1-t);
        x%=(x-w);
    }
}
contract OverwrittenSematicWithUnwrappedCheckedArithmetic2 {
    uint x;
    uint y;
    uint z;
    function f() public {
        uint w = uint(-2);
        uint t = uint(-1**2**w);}
        z-=1;
        z%=(x+y);
        z+=(z-1);
    }
}
contract NotOverwrittenSematicWithUnwrappedCheckedArithmetic2 {
    uint x;
    uint
