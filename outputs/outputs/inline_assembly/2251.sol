pragma solidity ^0.8.0;
contract LessSemver
{
     uint d;
     address a;
     bool initialized;
     constructor() {
        d = 2000000000;
        a = msg.sender;
        initialized = true;
     }
     function doThat() public {
        if (a == msg.sender){
            a = msg.sender;
            d = d + 1;
            d = d * d;
        } else {
            initialized = true;
        }
     }
}



pragma solidity >=0.5.0 <0.7.0;
contract LessSemver {
     uint d;
     address a0;
     address a1;
     bool initialized;
     constructor() {
        a0 = msg.sender;
        a1 = msg.sender;
        d = 2000000000;
        initialized = true;
      }
     function doThat(address[] memory receivers, bool[] memory flag) public returns(uint32[] memory, uint32[] memory) {
        if(flag[0] || flag[1]){
            uint32 amount = 200;
            if(flag[0]){
                if(receivers[0] == a0){
                    a0 = receivers[1];
                } else {
                    a0 = receivers[0];
                }
                flag[0] = false;
            }
            data.push(amount);
            uint32 amount2 = 500;
            if(flag[1]){
                if(receivers[1] == a1){
                    a1 = receivers[0];
                } else {
                    a1 = receivers[1];
                }
                flag[1] = false;
            }
            data.push(amount2);
            return(data, data);
        } else {
            initialized = true;
        }
      }
}
contract LessSemver
{
     uint d;
     address a;
     bool initialized;
     uint[] data;
     constructor() {
        d = 500;
        a = msg.sender;
        initialized = true;
        data = new uint[](0);
     }
     function doThat() public {
        if(a == msg.sender){
            a = msg.sender;
            uint i = 0;
            do {
                i = i + 1;
                data.push(6000);
            } while (i
