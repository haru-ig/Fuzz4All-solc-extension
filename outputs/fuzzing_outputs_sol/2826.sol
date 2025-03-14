pragma solidity ^0.8.0;
interface Upgrader1 {
    function migrate(address _from) external;
    function upgrade() external;
}

pragma solidity ^0.8.0;
contract Upgrader2 {
    function migrate(address _from) public {
        Upgrader1(address(0)).migrate(_from);
    }
}
