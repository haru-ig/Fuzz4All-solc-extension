pragma solidity ^0.8.0;
interface IStorage {
  function doSetInt(_uint a, _uint b, _int _c, _int _d, _int _e, _int _f) external;
  function doGetInt(_uint a, _uint b, _int _c, _int _d, _int _e, _int _f) external view returns(uint, uint, int, int, int, int, int);
}

pragma solidity ^0.8.2;
contract MyContract {
  function setInt(_uint a, _uint b, _int _c, _int _d, _int _e, _int _f) public {
    uint m = 10**2 - 1;
    uint m2 = a >> m | b >> m;
    a |= m2 << m | m2 >> (m-a-b);
    b |= m2 >> m | m2 << (m-b-a);
    _uint128(uint16(a)) = uint128(_uint128(uint16(a)) + _uint128(uint16(_uint128(uint16(_uint128(uint16(a)) + uint16(_uint128(uint16(b))))))));
    _uint128(uint128(uint16(a)) + _uint128(uint16(_uint128(uint16(_uint128(uint16(e)))))))) = e << (727-e) | e >> (999-e);
    _uint728(uint64(1)) = a << (809-a) | a >> (208-a);
    IStorage(0x1000).doSetInt(_uint(m2) | _uint(m - (a - b)), _uint(1), _int(a-b), -b, -a, -e, -_int(_uint128(uint16(e)) - 1));
  }
  function GetInt(_uint a, _uint b, _int _c, _int _d, _int _e, _int _f) public view returns(uint, uint, int, int, int, int, int) {
    uint m = 10**2;
    uint m1 = _uint128(_uint128(_uint128(_uint128(uint16(a)))) + _uint128(uint16(b))) >> _uint(728)) & ((uint(1)<<808) - 1);
    _uint128(_uint128(_uint128(_uint128(_uint128(uint16(a))));
    _uint128(m-m1
