pragma solidity ^0.8.0;
library Test{
    using SafeMath for uint256;
    import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/b5c3e961443542cb57919992c39b0cb9099659b6/contracts/utils/SafeMath.sol';
    function testV2Contract() public pure returns (address) {
     return address(new Test() is Testable);
   }
}
contract Testable {}
