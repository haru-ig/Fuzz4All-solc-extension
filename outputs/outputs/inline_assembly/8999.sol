pragma solidity ^0.8.0;
contract EquivalentSolidity5
{
    struct X
    {
        uint256 x;
    }
    uint256 private _a;
    uint256 private _b;
    uint256 private _c;
    uint256 public _d;
    constructor() public
    {
        _a = 2;
        _c = 10;
        _b = _a + _x_x;
        _d = _b + _x_x;
        _x_x = 3;
    }
    function add() public pure returns(X memory)
    {
        return X(12);
    }
    function mul() public pure returns(X memory)
    {
        return X(10);
    }
    function sub() public pure returns(X memory)
    {
        return X(10);
    }
}
</code></pre>
<p id="run">Run this code and you should find the contract behaves as expected. The contract output contains the result of the division using the inline arithmetic. Also, the contract state is changed by the addition operation as expected. That is, the contract state is now increased.</p>



<br />

<br />

<h2>Next steps</h2>

<div class="next-steps">
<ul>
    <li><a href="11-solidity-intricacies.html">Intricacies of the Solidity language</a></li>
    <li><a href="12-how-solidity-works.html">Understanding the Solidity virtual machine</a></li>
    <li><a href="13-solidity-optimizing.html">Optimizing gas consumption using the Solidity compiler</a></li>
    <li><a href="14-solidity-testing.html">Testing different examples with different programming languages</a></li>
    <li><a href="15-solidity-deploying.html">Compiling, deploying, and interacting with smart contracts</a></li>
    <li>
        <a href="https:
