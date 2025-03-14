pragma solidity ^0.8.0;
contract FallbackDemo {
    function first() external payable { }
    receive() external payable { }
    function second() external payable { }
}
contract FirstFallback {
    function third() external payable { }
}
contract SecondFallback {
    function fourth() external { payable { _; } }
}
contract ThirdFallback {
    receive() external payable { payable { fallback(); } }
}
contract CallerFallbacks {
    function first() external payable { }
    receive() external payable { }
    function second() external payable { }
}
contract FirstFallbacks {
    function third() external payable { }
}
contract SecondFallbacks {
    function fourth() external payable { }
}
contract ThirdFallback {
    receive() external payable { fallback(bytes1 b1); }
    receive() external payable { bytes1 b2; fallback(b1); }
}
