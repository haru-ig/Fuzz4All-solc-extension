pragma solidity ^0.8.0;
contract Convert {

    function convertUnsignedString(string memory) public pure returns (uint) {
        return 10;
    }

    function convertUnsignedBytes(bytes memory) public pure returns (uint) {
        return 0;
    }
}
pragma solidity ^0.8.0;
contract Array {

    uint256[] frogArray;
    uint256[] barnArray;
    uint yoghurt = 20;

    function addToFrogArray(uint256 value) public {
        frogArray.push(value);
    }

    function addToBarnArray(uint256 value) public {
        barnArray.push(value);
    }


    function getMinFrog(uint256 startIndex) public view returns (uint256) {

        uint256 minValue = frogArray[startIndex];
        for (uint256 i = startIndex + 1; i<frogArray.length; i++) {
            if (minValue > frogArray[i]) {
                minValue = frogArray[i];
            }
        }
        return minValue;
    }


    function getMaxBarn(uint256 endIndex) public view returns (uint256) {

        uint256 maxValue = barnArray[endIndex];
        for (uint256 i=endIndex-1; i>=0;i--) {
            if (maxValue < barnArray[i]) {
                maxValue = barnArray[i];
            }
        }
        return maxValue;
    }
    function setYoghurt(uint256 val) public {
        yoghurt = val;
    }
    function getYoghurt() public view returns (uint256 val) {
        return yoghurt;
    }
    function setMax(uint256 val) public {
        max = val;
    }
    function getMax() public view returns (uint256 val) {
        return max;
    }
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}
pragma solidity ^0.8.0;
contract Math {
    function squareRoot(uint256 n) public pure returns (uint256 m) {
        m = n;
        while (n % 2 == 0) {
            m = m / 2;
            n = n / 2;
        }
        uint256 x = 1;
        while (n!= 0) {
            m = (m *  x) / 2 ;
            x = x + 1 ;
            n = n / x;
        }
    }
}
pragma solidity
