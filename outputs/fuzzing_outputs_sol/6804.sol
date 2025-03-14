pragma solidity ^0.8.0;
contract Change {
    uint internal count = 0;
    uint constant value = 10;
    function change(uint x) public returns (uint) {
        x = x + value;
        count++;
        return x;
    }
    function get() public view returns (uint) {
        return count;
    }
}
contract ChangeAndCall {
    uint internal count = 0;
    uint constant value = 10;
    function change(uint x) public returns (uint) {
        x = x + value;
        count++;
        return x;
    }
    function get() public view returns (uint) {
        return count;
    }
}
contract ChangeAndFallback {
    uint internal count = 0;
    uint constant value = 10;
    function change(uint x) public returns (uint) {
        x = x + value;
        count++;
        return x;
    }
    function get() public view returns (uint) {
        return count;
    }
}
contract Caller extends FallbackCall {
    function test(uint x) public {
        uint y = change(x);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
        y = change(y);
    }
}
