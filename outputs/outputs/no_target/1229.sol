pragma solidity ^0.8.0;
contract RevertInjection
{
    function  revertInjection(address a, address b, bytes memory x) private
    view returns(address) {
        require(_x(x),"Invalid input format");
        return b;
    }
    function _x(bytes memory x) internal pure returns(bool) {
        return (x.length!= 0);
    }
}

pragma solidity ^0.8.0;
contract ExplicitRevert
{
    address public a;
    function explicitRevert(address a, address b) public returns(uint) {
      b.transfer(10);
      a.transfer(10);
      return 0xfffffff;
    }
}

pragma solidity ^0.8.0;
contract Checked
{
    function checked(bytes memory x) public view returns( bool) {
        if (x.length!= 0) {
            return true;
        }
        return false;
    }
}

pragma solidity ^0.8.0;
contract unchecked
{
    function unchecked(address a, bool b) public pure returns(address, bool) {
        return (a, b);
    }
}
