pragma solidity ^0.8.0;
contract fifteen {
    modifier check(int b) {
            if (b>32)
            {
                revert();
            }
            _; }
    function f(int a, int b) public
    returns(int)
    {
        a(b); check(b);
        return a;
    }
    function a(int x) public pure { }
}
