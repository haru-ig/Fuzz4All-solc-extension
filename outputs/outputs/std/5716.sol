pragma solidity ^0.8.0;
contract Array1{
    uint[] public m;

    function addArray(uint[] memory a, uint[] memory b){
        uint m = memoryGetSize();
        a[m-1] = a[m-2] + a[m-3];
        a[m-3] = b[m-2] + b[m-1];
        a[m-2] = b[m-2] + b[m-1];
    }

    function memoryGetSize() public view returns (uint) {
        return m.length;
    }
}
contract Array2{
    uint[] public m;

    function addArray(uint[] memory a, uint[] memory b){
        uint m = memoryGetSize();
        m = m + m +m + m + m + m;
        for (uint i = 1; i <= m-2; i++){
            a[i] = a[i-1] + a[i-2];
            a[i-1] = b[i-1] + b[i-2];
            a[i-2] = b[i-1] + b[i-2];
        }
    }

    function memoryGetSize() public view returns (uint) {
        return m.length;
    }
}
contract Array3{
    uint[] public m;

    function addArray(uint[] memory a, uint[] memory b){
        uint m = memoryGetMemorySize()+memoryGetMemorySize()+memoryGetMemorySize()+memoryGetMemorySize();
        uint i;
        for (i = 1; i <= m-1; i++){
            a[i+i-1] = a[i-1]+a[i-2];
            a[i-1] += a[i-2];
            a[i-2] += a[i-1];
        }
        for (i = 1; i <= m; i++){
            a[i] = a[i-1]+a[i-2];
            a[i-1] = b[i-1]+b[i-2];
            a[i-2] = b[i-1]+b[i-2];
