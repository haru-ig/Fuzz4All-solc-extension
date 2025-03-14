pragma solidity ^0.8.0;
contract Mod {
    uint a;
    uint x;
    function update(uint y) private {
        a = (uint(y));
    }
    function get(uint x) private returns(uint) {
        return (a);
    }
    function f1() public {
        update(x);
        get(x);
    }
}

pragma solidity ^0.8.0;
contract Mod {
    uint a;
    uint x;
    function update1(uint y) private {
        x = y;
    }
    function get(uint x) private returns(uint) {
        return x;
    }
    function f1() public {
        update1(x);
        get(x);
    }
}


pragma solidity ^0.8.0;
contract ModTest {
    using Mod for address;
    using Mod for uint;
    using Mod for uint256;
    using Mod for bytes;
    use Mod for string;
    function f1(address a, uint b, uint256 c, bytes memory d, string memory e) public returns(bool, string) {
        a.update(b);
        a.update(c);
        a.update(uint(10 + 20 + (30 + 40) * 50));
        a.update(0x333);
        a.update(235005000);
        a.update(a);
        a.update(a + x);
        a.update("Hello");
        a.update(uint(0x100000000));
        return (true, 'done');
    }
}

pragma
