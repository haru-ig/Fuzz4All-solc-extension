pragma solidity ^0.8.0;
contract MissLoupe {
    function _next() public returns (uint) {
    return MissLoupe._next().add(1);
}
}

 pragma solidity ^0.8.0;

contract MissLoupeBase {

    import "./MissLoupe.sol";

    uint i;

    constructor() {
        i = 0;
    }

    function set() public {
        i = i.add(1);
    }
}

 pragma solidity ^0.8.0;


pragma solidity ^0.8.0;


interface IERC20 {

    function name() external view returns (string memory);


    function symbol() external view returns (string memory);


    function decimals() external view returns (uint8);


    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);
