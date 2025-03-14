pragma solidity ^0.8.0;
interface Token{
function mint(address _to, uint256 _value) external;
}

contract MyContract {
        address public token;

        constructor(){
            address tokenAddress = 0xf04C537869E28035b55691B828996aD58502Eb39;
            token = Token(tokenAddress);
        }

        function test() external returns (bool) {
            uint256 amount = 1000000000000;
            uint256 result = amount;

            (bool success, ) = token.call{value: amount}("");
            require(success,"Success message");

            }
        }
*/
