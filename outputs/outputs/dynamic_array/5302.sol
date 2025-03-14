pragma solidity ^0.8.0;
contract Test40 {
    uint8 memory memoryarray1[12] = [0, 80, 81, 82, 83, 85, 86, 88, 89, 90, 91, 92, 94, 95, 97, 98, 99];
    uint8[] memory memoryarray2 = [0, 80, 81, 82, 83, 85, 86, 88, 89, 90, 91, 92, 94, 95, 97, 98, 99];
    uint16 memory memoryarray3 = [0, 80, 81, 82, 83, 85, 86, 88, 89, 90, 91, 92, 94, 95, 97, 98, 99];
    {
        uint8[5] memory memoryarray5 = [0, 80, 81, 82, 83];
        uint8 memoryarray6[] = [0, 80, 81, 82, 83];
        uint16 memorymemoryarray7;
        {
            uint8[] memorymemoryarray;
            memorymemoryarray7 = [0, 80, 81, 82, 83];
        }
    }
}
