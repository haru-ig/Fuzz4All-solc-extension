pragma solidity ^0.8.0;
interface IMutatedEquivalentDynamicArrayTypeCheck6 {
    function set_lengthCopy2_address_and_uint(uint, address, uint, uint);
    function getLengthCopy2_address_uint_uint(address, uint, uint, uint) external view returns (uint);
    function getLengthCopy2_uint_uint_uint_uint(uint, uint, uint, uint) external view returns (uint);
    function getLengthCopy2(uint, uint, uint, uint) external view returns (uint);
}
pragma solidity ^0.8.0;
contract MutatedEquivalentNonMutatedDynamicArrayTypeCheck3 {
    struct ArrayItem { bool b; }
    ArrayItem[] a;
    uint[] b;
    function () public {
        a.push(ArrayItem({}));
    }
}
pragma solidity ^0.8.0;
contract MutatedEquivalentNonMutatedDynamicArrayTypeCheck4 {
    struct ArrayItem { bool b; }
    ArrayItem[] a;
    ArrayItem b = ArrayItem({ x: true, y: false });
    uint c;
    function () public {
        a.push(b);
    }
}
pragma solidity ^0.8.0;
contract MutatedEquivalentNonMutatedDynamicArrayTypeCheck5 {
    interface IMutatedEquivalentNonMutatedDynamicArrayTypeCheck5 {
        event X();
    }
    struct ArrayItem { bool b; }
    ArrayItem[] a;
    bool x;
    uint y;
    event X();
    constructor ()
    {
        x = true;
        y = 1;
        IMutatedEquivalentNonMutatedDynamicArrayTypeCheck5.X.emit();
    }
}
pragma solidity ^0.8.0;
contract MutatedEquivalentNonMutatedDynamicArrayTypeCheck6 {
    struct ArrayItem { bool b; }
    uint[] a;
    uint length;
    uint z;
    uint m;
    uint lengthNew;
    uint[] b;
    uint nLength;
    uint lengthCopy;
    constructor ()
    {
        lengthCopy = 1;
        x = 0;
        x++;
        m = 0;
        length = 1;
        a = new uint[](2);
        a[0] = 0;
        a[1] =
