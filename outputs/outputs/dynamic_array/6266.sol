pragma solidity ^0.8.0;
library l {
	struct s {
		uint a;
	}
	function get() public returns (s memory) {
		return l.s(0);
	}
	function modded() public payable {
		l.s memory array = l.get();
		for(uint k; k < 65536; k++) {
			((uint memory)(0 <= array.a && array.a < 255)) >> (1);
		}
		for(uint k; k < 16777216; k++) {
			(array.a)++;
		}
		require(array.a == 16777217);
		require(array.b == 0);
	}
}
</code></pre>
<pre><code id='output'>
</code></pre>
<h3 id="output-format-for-testing-solc-compiled-contract">Output Format for Testing: SOLC-Compiled Contract</h3>
<p>The output of a contract creation function is only relevant for contract testing. In the case of a contract with multiple external contracts, the corresponding contracts' outputs can't be checked because this would result in a contract creation function execution for each contract.</p>
<p>A contract testing output looks like the following example:</p>
<pre class="line-numbers"><code class="language-solidity" data-lang="solidity">
import './TestInterface.sol';

 contract L is TestInterface {
    function get(uint a) public view returns (uint256) {
        return a;
    }
    function modded() public payable {
        require(get(10) == 10);
    }
}
</code></pre>
<p id="test-contract-creation-results">The TestInterface.sol was imported from the TestContract.sol contract.</p>
<pre class="line-numbers"><code class="language-solidity" data-lang="solidity">pragma solidity ^0.8.0;
library TestInterface {
    function create() public {
    }
}
</code></pre>
<pre class="line-numbers"><code class="language-solidity" data-lang="solidity">
import './L.sol';
import './TestInterface.sol';

 contract TestContract is L {
	function runTestContract(address testInterface
