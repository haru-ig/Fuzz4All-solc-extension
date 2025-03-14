pragma solidity ^0.8.0;

contract Dummy1 {

    uint256[] internal myInts;

    function getInts() public view returns(uint256[] memory) {
        return myInts;
    }

    function setInts(uint256[] memory values) public {
        myInts = values;
    }


    function getInt(int x) public view returns (uint256) {
        if (x >= 0 && x < myInts.length) {
            return myInts[x];
        } else {
            revert();
        }
    }


    struct OuterString {
        uint256 keyIndex;
        uint256[] myStrings;
    }

    function getString(OuterString memory memory s) public view returns (uint256[] memory) {

        if (s.keyIndex >= 0 && s.keyIndex < s.myStrings.length && s.myStrings.length!= 0) {
            return s.myStrings;
        } else {
            revert();
        }
    }


    function prefillString(uint256 x, OuterString memory s) public view {
        if (x!= 0) {
            s.myStrings[x] = 1;
        }
    }


    function addString(uint256 x, OuterString memory s) public {
        s.myStrings[s.keyIndex + 1] = x;
        s.keyIndex += 1;
    }
}
