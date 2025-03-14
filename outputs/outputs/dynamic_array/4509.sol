pragma solidity ^0.8.0;
contract Mutator { constructor () {
  mutant  public s = 0;
} function test() public pure {
  s++;
} }

pragma solidity ^0.8.0;
contract Mutator { constructor () {  mutant  public s = 0; } function test() public pure { } function test2() public pure { } }

pragma solidity ^0.8.0;
contract Mutator { constructor () {  mutant  public s = 0; } }

pragma solidity ^0.8.0;
contract Mutator { constructor () {  mutant  public s = 0; } function test() public pure { } function test2() public pure { } }

pragma solidity ^0.8.0;
contract Mutator { constructor () {  mutant  public s = 0; } function test() public pure { } function test2() public pure { } }
