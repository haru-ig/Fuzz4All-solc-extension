pragma solidity ^0.8.0;
import {IERC20} from "./IERC20.sol";
contract Milestone2Crowdsale__IERC20_Implementation is IERC20 {
    function balanceOf(address account) public view returns (uint256) {
        (bool success, bytes memory data) = account.call{value: 0}(
            abi.encodeWithSignature("return(uint256)", 0)
        );
        return uint256(abi.decode(data, (uint256)));
    }
    function transfer(address to, uint256 value) public override returns (bool) {
        (bool success, bytes memory data) = to.call{value: value}(
            abi.encodeWithSignature("return(bool)", true)
        );
        return uint256(abi.decode(data, (bool))) == 1;
    }
    function approve(address spender, uint256 value) public override returns (bool) {
        (bool success, bytes memory data) = spender.call{value: value}(
            abi.encodeWithSignature("return(bool)", true)
        );
        return uint256(abi.decode(data, (bool))) == 1;
    }
    function allowance(address owner, address spender) public view override returns (uint256) {
        (bool success, bytes memory data) = owner.call{value: 0}(
            abi.encodeWithSignature("return(bool)", true)
        );
        return uint256(abi.decode(data, (bool))), 256);
    }
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}
