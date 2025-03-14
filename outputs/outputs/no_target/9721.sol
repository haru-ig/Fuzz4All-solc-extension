pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure isBug { return bytes("bugger"); } }
address receiver = 0x65f8B2b05425d797a2fE25F391601202C8848394;
contract Sender { function () payable { receiver.transfer(payable.balance); } } interface Proxy { function fulfill(bytes calldata z, bytes32 r, bytes32 s) external returns(bytes4); }
contract ProxyRecipient { function fulfill(bytes4 sig) external { if (sig!= Proxy.fulfill(bytes(""), _, _)) revert(); } } contract ProxyERC20 is ProxyRecipient { function staticcall(bytes4 sig) external payable { fulfill(this, sig); } } contract ERC20 { function transfer(address,uint256) public returns (bool) { return true; } function transfer(address, uint256) external { } } contract ERC20Mintable is ERC20 { function mint(address,uint256) public {} } interface IERC20 is IERC20Mintable { function mint(address,uint256) public; } contract MintableToken { function balanceOf(address) public view returns (uint256); function totalSupply() public view returns (uint256); } contract DummyToken is MintableToken { function MintableToken (uint128) public { } } contract TestERC20 is ERC20Mintable { constructor () public { _mint(0xB7c0C9D333f9297aBcC3B7a1C10f1f4e2E2539c8, 10*10**28);} function name() public pure returns (string memory) { return "ERC20Mintable";} function symbol() public pure returns (string memory) { return "TEST";} function decimals() public pure returns (uint8) { return 18;} function tokenURI(uint256) public pure returns (string memory) { return "http://example.com/erc20/"; } function totalSupply() public view returns (uint256) { return 100; } function balanceOf(address owner) public view returns (uint256) { return 100; } function _mint(address to, uint256 value) public { MintableToken(to).mint(to, value); } }





contract ERC20Test is ProxyERC20, TestERC20 { function balanceOf(address owner) public view returns (uint256) { /*
