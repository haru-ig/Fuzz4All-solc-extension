pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    address private _lastModifyer;
    constructor(uint Z) public {
        c += Z + 1;
        a += Z + 10;
        b += Z;
        _lastModifyer = msg.sender;
    }
    function increment(uint Y) public returns (uint) {
        a += Y + Y + 1;
        c += Y + Y + 1;
        return 2 * Y + 1;
    }
    receive() external payable {}
    function getLastModifyer() public view returns (address) {
        return _lastModifyer;
    }
}
</code></pre><br/>

<h2>Assembly with Comments</h2>
<pre><code class="solidity">
</code></pre><br/>

<h2>Assembly with Whitespace</h2>
<pre><code class="solidity">
</code></pre><br/>

<h2>Assembly with Data</h2>
<pre><code class="solidity">
</code></pre><br/>

<h2>Assembly with Strings</h2>
<pre><code class="solidity">
</code></pre><br/>

<h2>Assembly with Arrays</h2>
<pre><code class="solidity">/*
uint256:
0xabcd0000000000
