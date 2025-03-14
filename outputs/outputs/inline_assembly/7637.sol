pragma solidity ^0.8.0;
contract L3 {
    uint constant initialx = 0x01234503;
    function f() public pure returns (uint) {
        return initialx - 0xEFDEDEAD + initialx - initialx + initialx - initialx;
    }
}

pragma solidity ^0.8.0;
contract L2 {
    uint constant initialx = 0x01234565;
    function f() public pure returns (uint) {
        return initialx + initialx - initialx - initialx - initialx - initialx;
    }
}
pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0x01234565;
    function f() public pure returns (uint) {
        return initialx + initialx - initialx - initialx - initialx - initialx;
    }
}
contract Genesis {
    address owner;
    uint internal timestamp;

    constructor() public {
        timestamp = block.timestamp;
        owner = msg.sender;
    }

    function balanceOf(address _owner) public view returns (uint) {
        return address(this).balance;
    }
}

{% endhighlight %}
{% highlight asm %}
{% raw %}


pragma solidity ^0.8.0;
contract L4 {
    uint constant initialx = 0x01234501;
    function f() public pure returns (uint) {
        return initialx - 0xEFDEDEAD - 0xCAD3BEA6 - 0xDEAD04B3 + 0xEADDEEFDEA1DF45 + 0xEFDEDEAD + 0xEAD3BEA6;
    }
}


pragma solidity ^0.8.0;
contract L3 {
    uint constant initialx = 0x01234503;
    function f() public pure returns (uint) {
        return initialx - 0xEFDEDEAD - 0xCAD3BEA6 - 0xDEAD04B3 + 0xEADDEEFDEA1DF45 + 0xEFDEDEAD + 0xEAD3BEA6;
    }
}


pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0x01234565;
    function f() public pure returns
