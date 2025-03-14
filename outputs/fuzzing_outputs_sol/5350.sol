pragma solidity ^0.8.0;
import "./mapmap.sol";
contract Caller
{
        function receive() external payable {
        uint256 a = mapmap.f.value;
        (mapmap.f.value = 999999);

        bytes memory data = abi.encodePacked(address(mapmap.g), mapmap.g.f());
        (bool success, bytes memory value) = address(mapmap.g).call {value: 999999}(data);
        require(success);
        }
}
