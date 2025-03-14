pragma solidity ^0.8.0;
contract BWrapperInterface {
    constructor() public {
    }
    function getData() public view returns (bytes memory){
        return new bytes(0);
    }
}

pragma solidity ^0.8.0;
contract AWrapperConcrete implements AWrapperInterface {

uint public __a0;
constructor(uint a) public{
__a0 = a;
 }
function getData() public view returns (bytes memory){
return new bytes(1);
}
}

pragma solidity ^0.8.0;
contract BWrapperConcrete implements BWrapperInterface {

constructor() public{
     }
function getData() public view returns (bytes memory){
return new bytes(0);
}
}

pragma solidity ^0.8.0;
contract AWrapper {
uint public __a0;
constructor(uint a) public{
__a0 = a;
 }
function getData(uint x, bytes memory y) public view returns (bytes memory){
return new bytes(0);
}
}

pragma solidity ^0.8.0;
contract BWrapper {

uint public __a0;
constructor() public{
__a0 = 0;
 }
function getData(uint x, bytes memory) public view returns (bytes memory){
return new bytes(0);
}
}

pragma solidity ^0.8.0;
contract AbiCoder {
enum RevertReason {
NoErrors
};
struct Entry {
address contractAddress;
uint8 entryType;
uint32 position;
uint16 encodedLength;
uint16 entryLength;
bytes encodedData;
bytes entryData;
uint revertedValue;
uint entryIndex;
};
constructor(uint16 _entryCount_) public {
entryCount = _entryCount_;
}
uint8 internal entryCount;
byte internal constant _contractAddressPrefix = 0x19;
uint8 constant entryTypeHash = 0x66;
uint8 constant positionHash = 0x26;
uint8 constant encodedLengthHash = 0x78;
uint8 constant entryLengthHash = 0x87;
uint8 constant encodedDataHash = 0x0
