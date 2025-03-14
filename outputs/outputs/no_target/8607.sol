pragma solidity ^0.8.0;
contract NewMut {
    function set(uint a_, uint b_) public {
        a_ = (a_ ^ (b_ & 10) << 8) / 10;
    }
}

pragma solidity ^0.8.0;
contract NewMut2 {
    uint public value;
    function add(uint256 x, uint256 y) public {
        value += x + y;
    }
}

pragma solidity ^0.8.0;
contract NewMut3 {
   contract NewMut {
        function set(uint a_, uint b_) public {
            a_ = (a_ ^ (b_ & 10) << 8) / 10;
        }
    }
}

pragma solidity ^0.8.0;
contract NewMut4 {
    function add(uint256 x, uint256 y) public {
        New mutx : NewMut;
        mutx.add(x, y);
        NewMut mutm : NewMut2;
        mutm.add(x, y);
    }
}

pragma solidity ^0.8.0;
contract NewMut5 {
    struct V {
        uint256 val;
        mapping(uint128 => address) index;
    }
    struct V1 {
        V v;
        uint256 w;
    }
    uint256 x;
    V v;
    function h() public {
        x = 1;
        v.val = 1;
        V v1;
        v1.v.val = 1;
        V1 v2;
        v2.v.v.val = 1;
    }
}
