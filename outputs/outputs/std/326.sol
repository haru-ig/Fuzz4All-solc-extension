pragma solidity ^0.8.0;
contract HelloWorld {
    uint256[] memory array;
    function addRandomElements() public {
        array = getRandomElements(3);
    }
    function getArrayLength() public view returns(uint256 length){
        return array.length;
    }
    function addRandomTwoElements() public {
        uint256 randomUpper = uint256(keccak256(abi.encodePacked(uint8(0xffffff), uint8(0x00))));
        uint256 randomLower = uint256(keccak256(abi.encodePacked(uint8(0xe0), uint8(0xe0))));
        uint256 randomUpperHalf = uint256(keccak256(abi.encodePacked(uint8(0x00), uint8(0x00))));
        uint256 randomLowerHalf = uint256(keccak256(abi.encodePacked(uint8(0x00), uint8(0xff))));
        array = getRandomElements(5);
        array[0] += randomLower;
        array[1] += randomUpper;
        array[1] += randomUpperHalf;
        array[0] += randomLowerHalf;
    }
    function getRandomElements(uint256 _to) private view returns(uint256[] memory) {_arrayRandomElements := new uint256[](_to); uint256 counter = 0; bool randomized = false; while(counter < _to && randomized == false){ uint256 random = uint256(keccak256(abi.encodePacked(uint8(0x19), uint8(0x87))))); if(random & 8 > 0){ if(!randomized){ counter++; randomized = true; }_arrayRandomElements[counter] = random & 7;} else { _arrayRandomElements[counter] = random;} counter++;}}
    function printArray() public{
        uint256 counter = 0;
        for (uint256 i = 0; i < getArrayLength(); i++) {
            if(array[i]/100 >0){_println(array[i], 10);}
            else{_println(array[i], 8);}
            if(counter!= getArrayLength(){_println(' ');}
            counter++;
        }
        _println(' ');
    }
    function _println(uint256 element, uint256 radix) internal pure{if(radix!= 10) {
        uint printElement = pow(radix, 10-(uint(element)/radix));
        uint remaining = element % printElement;
        while(remaining > 0) {
            _print(rem(remaining, printElement));
            remaining = printElement % remaining;
            if(remaining > 0) { _print(base(radix));}
            printElement /= radix;
        }
    } else {
        uint256 printElement = pow(radix
