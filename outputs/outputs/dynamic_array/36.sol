pragma solidity ^0.8.0;

contract MutateC{
    uint256[] public bArray;
    uint256[] private bArray2;

    function getPublic()public view returns(uint256[] memory) {
        return bArray;
    }
    function getPrivate()public view returns (uint256[] memory) {
        return bArray2;
    }
    function getPublicAndPriv()public view returns (uint256[] memory) {
        return bArray2;

    }

    function setPublic(uint256 _val)public {
        bArray = new uint256[](_val);
    }
    function setPrivate(uint256[] memory _val)public {
        bArray2 = _val;
    }
    function setPrivateAndPublic(uint256 _pub)public {
        setPrivate(new uint256[](_pub));
        setPublic(_pub);
    }
}
