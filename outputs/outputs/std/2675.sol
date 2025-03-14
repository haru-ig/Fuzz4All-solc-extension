pragma solidity ^0.8.0;
interface IERC1271Enumerable{
   function numberOfProxies(address sender) external view returns (uint256);
   function getProxy(address sender, uint256 index) external view returns (address);
}

pragma solidity ^0.8.0;
contract SimpleToken {
    constructor(string memory key) {
        emit Transfer(
                address(0x0),
                msg.sender,
                10 ** ( 8 * bytes(key).length * 1.28 )
        );
    }

    function balanceOf(address account) public view returns(uint256) {
        return 0;
    }

    function transfer(address to, uint256 value) public returns(bool) {
        return true;
    }

    function transferFrom(address from, address to, uint256 value) public returns(bool) {
        return true;
    }

    function createTransferProxy() public returns (IERC1271) {
        return new IERC1271();
    }

    function createOwnershipProxy() public returns(address) {
        return new address(0);
    }

    function transferOwnership(address owner) public {
        emit OwnershipTransferred(owner);
    }

    event OwnershipTransferred(address indexed previousOwner);
}

pragma solidity ^0.8.0;
contract Proxy {
    IERC1271 myToken;

    SimpleToken token;

    constructor(SimpleToken _token) public {
        myToken = token;
        token = _token;
    }

    function owner() public pure returns(address) {
        return msg.sender;
    }

    function isApprovedOrOwner(address proxy, uint256) public view returns(bool) {
        if (myToken.isApprovedOrOwner(proxy, 0)) {
            return true;
        }
        address owner = token.owner();
        return proxy == owner || myToken.isApprovedOrOwner(owner, proxy);
    }

    function doProxy() public returns (uint256) {
        uint256 data;
        string memory key = 'hello';
        bytes memory bKey = bytes(key);
        data = bytes2uint(bKey);
        uint256 mySum;

        if (isApprovedOrOwner(msg.sender, data)) {
            return myToken.balanceOf(msg.sender);
        }



        return myToken.transfer(msg.sender, data);
    }

    uint256 public myFirst;

    function myFirstFunction() public {
        myFirst = msg.sender
