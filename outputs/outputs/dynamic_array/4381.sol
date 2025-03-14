pragma solidity ^0.8.0;
struct AddressHolder {
    uint256 id;
    AddressHolder(uint256 _id) public {
        id = _id;
    }
    uint256 method1(uint256 _id) internal view returns (int256){
        return int256(_id);
    }
   }
pragma solidity ^0.8.0;
