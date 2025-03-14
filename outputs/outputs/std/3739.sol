pragma solidity ^0.8.0;
contract ArrayExample {
    struct Array {
        uint256 arrayLength
        uint256[] data
    }

    function getMaximum(Array memory self) private view returns (uint256 maximum) {
        uint256 count = self.arrayLength;
        for (uint256 i=0; i<count; i++) {
            uint256 item = self.data[i];
            if (item > maximum) {
                maximum = item;
            }
        }
        return maximum;
    }

    function getMinimum(Array memory self) private view returns (uint256 minimum) {
        uint256 count = self.arrayLength;
        for (uint256 i=0; i<count; i++) {
            uint256 item = self.data[i];
            if (item < minimum) {
                minimum = item;
            }
        }
        return minimum;
    }

    function add(Array memory self, uint256 element) private {
        self.arrayLength++;
        self.data[self.arrayLength-1] = element;
    }

    function setElements(Array memory self, uint256 elements) private {
        self.arrayLength = elements;
        for (uint256 i=0; i < elements; i++) {
            self.data[i] = i;
        }
    }

    function sort(Array memory self) private {
        uint256 count = self.arrayLength;
        uint256 minimum = self.getMinimum(self);
        uint256 maximum = self.getMaximum(self);



        for (uint256 i=0; i < count-1; i+=2) {
            if (minimum > self.data[i]) {
                uint256 minimumIndex = i--;
                self.data[i] = self.data[minimumIndex];
            }
            if (maximum < self.data[i+1]) {
                uint256 maximumIndex = i+=2;
                self.data[i+1] = self.data[maximumIndex];
            }
        }
    }
}
