pragma solidity ^0.8.0;
uint constant numElements = 8;
IsolateData memory[] memory data;

pragma solidity ^0.8.0;
uint constant numElements = 30;
IsolateData[] memory data;
for (uint i = 0; i < numElements; i++) {
    data.push();
    data[i].data = 1;
}
uint i;
for (i = 0; i < numElements - 1; i++) {
    bool cond = true;
    if (data[i].data == 1) {
        cond = false;
    }
    if (cond) {
        break;
    }
}
