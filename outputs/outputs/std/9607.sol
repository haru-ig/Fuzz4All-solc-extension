pragma solidity ^0.8.0;
pragma solidity >=0.8.0;
contract Mutate
{
        constructor() {
        }

        function do() public {
            address[] storage tempVar0x = new address[](0x1);

            tempVar0x[0x0] = address(0x0);
            delete tempVar0x[0x0];
        }
}
