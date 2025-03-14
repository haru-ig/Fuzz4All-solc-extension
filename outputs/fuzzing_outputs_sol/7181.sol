pragma solidity ^0.8.0;
interface IExample2 {
    function setCheckFor(address) external;
    function isValid() external view returns (bool);
    function getCheckFor() external view returns (bytes32);
}
contract Example2 is IExample2{
    function setCheckFor(address a) public {
        require(a!= address(0));
        bytes32 s = a.toEth160();
        require(checkFor[s] == SAFETY);
        checkFor[s] = SAFETY;
    }
    function isValid() public view returns(bool) {
        return checkFor[msg.sender] == SAFETY;
    }
    function getCheckFor(address e) public view returns (bytes32) {
        return checkFor[e];
    }
}
