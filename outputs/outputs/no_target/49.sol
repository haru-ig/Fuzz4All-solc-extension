pragma solidity ^0.8.0;
IERC223 public immutable IERC223Interface = IERC223(0x000000000000000000000000000000000000001);

pragma solidity ^0.8.0;
IERC223 public immutable IERC223Interface = IERC223(0x000000000000000000000000000000000000001);

pragma solidity ^0.8.0;
IERC223 public immutable IERC223Interface = IERC223(0x00000000000000000000000000000000000000001);

pragma solidity ^0.8.0;
uint256 public constant ADDR_ZERO = 0;
uint256 public constant GAS_PRICE_MIN_GWEI = 0;
interface IERC223 {
    event Transfer(address indexed _from, address indexed _to, uint256 _value);


    function transfer(address _to, uint256 _value) external returns (bool success);


    function transferFrom(address _from, address _to, uint256 _value) external returns (bool success);

}

pragma solidity ^0.8.0;
interface IERC223 {
    event Transfer(address indexed _from, address indexed _to, uint256 _value);


    function transfer(address _to, uint256 _value)
