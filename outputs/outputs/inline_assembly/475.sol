pragma solidity ^0.8.0;
interface Eos {
    function transfer(address to, uint256 value) external returns (bool);
    function balanceOf(address owner) external view returns (uint256);
    function gasUsed() external view returns (uint256);
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalenty1 {
    constructor () public {
        Eos(msg.value).transfer(msg.sender, msg.value);
    }
}
