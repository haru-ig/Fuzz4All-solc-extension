pragma solidity ^0.8.0;
contract Mutator8 {
 modifier doUpTo(uint256 index) {
     require(index <= uint256(block.blockhash(block.chainid - 1)), "must be <= 500");
     _;
 }
 function testMethod(uint256 a, bytes32 b) public view doUpTo(32131) {
     a += 25;
 }
}

{% endhighlight %}
