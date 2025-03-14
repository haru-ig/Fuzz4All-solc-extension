pragma solidity ^0.8.0;
contract Mut {
	address[] a;
	constructor() { a = new address[](0);}
}



  }

  function changeRecord(uint index, uint i) public {
    require( records[index].available );
    records[index].value = i;
  }

  function addRecord() public {
    records.push(Record(false, false, 0));
  }
}

# Array Length can also be used in contract functions.
*/
pragma solidity ^0.8.0;
contract ArrayLength {
  struct Record {
    bool available;
    bool reserved;
    uint32 value;
  }

  Record[] public records;

  function getRecord(uint index) public constant returns (bool, uint32) {
     Record memory record = records[index];
    if (record.available) return (true, record.value);

    Record storage storedRecord = records[index];


  }

  function changeRecord(uint index, uint i) public {
    require( records[index].available );
    records[index].value = i;
  }

  function addRecord() public {
    records.push(Record(false, false, 0));
  }
}

pragma solidity >=0.4.20 <=0.8.2;
import './contracts/ArrayLength
