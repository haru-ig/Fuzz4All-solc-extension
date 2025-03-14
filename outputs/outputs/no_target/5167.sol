pragma solidity ^0.8.0;
contract SimpleExample4 {
    uint256 public counter;
    function increment() public { require(counter == 0, "Counter already set"); counter = 0; }
    function increment2() public { require(counter == 0, "Counter already set"); (counter, ); }
    function increment3() public { (counter, ); }
    function increment4() public(uint256 c) public { require(counter == 0, "Counter already set"); c; }
    function increment5() public(uint256 c) public { c; }
}
