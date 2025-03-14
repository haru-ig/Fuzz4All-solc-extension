pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83 {
    uint256 a; uint256 b; uint256 c; uint256 d; uint256 e;
    uint256 olda; uint256 oldb; uint256 oldc; uint256 oldd; uint256 olde;
    function doSomething() public {
        uint256 ca = olda + 1;
        uint256 cb = ~olda;
        uint256 cb1 = cb + 10;
        uint256 cb2 = cb * 2;
        uint256 cd = olda + b;
        uint256 de = olda + c;
        uint256 ee = olda - e;
        oldb = cb + a;
        oldc = cd + olda;
        oldd = olda + de;
        olde = ee + oldc;
        e = ee - ee;
        e = e * 17;
        a = ca + b + c - d - e;
        b = oldb + olda + e - ee + d + c;
        b = b + cb1 + cb2;
        b = b + aa + ab + aa + b;
        c = cd + olda + ee + ed + aa + b;
        d = cd + olda + ee + d + cd + bd;
        d = d + cd * 2;
        e = ed + aa + de + cd + aa + d;
        m_a = a; m_b = olda; m_c_a = ca; m_c_b = cb; m_c_c = cd; m_d_a = olda; m_d_b = cb; m_d_c = de; m_e = ee;
        olda = a; oldb = olda; oldc = ca; oldd = cb; olde = ee; a = a + 1;
        aa = b + 10; ab = b * 2; aaa = aa * 2; b = a; c = a + a; d = a + a + a + a + a;
        e = b; aa
