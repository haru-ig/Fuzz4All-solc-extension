pragma solidity ^0.8.0;



uint8 indexed MAX_ITEMS = 5;
uint256[] internal itemIds;
mapping(uint256 => address) internal itemOwner;
address[] internal itemApprovers;
mapping(address => bool) internal itemApproversByAddress;
uint256 internal length;
uint256 internal maxItemId;


modifier inBounds(uint256 index){
    require(index<MAX_ITEMS,"array index is out of bounds");
    _;
}
function addItem(address approver) public{
    if (length==MAX_ITEMS) throw;
    require(length==0 || itemOwner[itemIds[length]].isZero(),"object exists");
    itemIds.push(0);
    itemApprovers.push(approver);
    itemOwner[itemIds[length]] = approver;
    if (itemApproversByAddress[approver].isZero()) itemApproversByAddress[approver] = true;
    length++;
}
function getItemAtIndex(uint256 index) public view returns(uint256){
    if (index>=length) throw;
    return itemIds[index];
}
function getLength() public view returns(uint256){
    return length;
}

contract Math{
    function pow(uint x, uint y) pure public returns (uint z) {
        require(y >= 1, "pow()");
        if (y == 1) return x;
        z = x;
        while (y > 1) {
            if (y % 2 == 1) z = z * x;
            y = y / 2;
            x = x * x;
        }
    }
}
contract Array is Math{
    function getMin() public view returns(uint256){
        return itemIds[0];
    }
    function getMax() public view returns(uint256){
        return itemIds[indexOf(maxItemId)-1];
    }
    function getSum() public view returns(uint256){
        uint256 sum = 0;
        for (uint256 index=0; index<length; index++) sum += itemIds[index];
        return sum;
    }
    function indexOf(uint256 target) public view returns(uint256){
        uint256 length=getLength();
        uint256 result=0;
        uint8 offset;
        for (offset=0; offset<length-1; offset++) {
            if (itemIds[offset+1]>target) break;
            result++;
        }
        if
