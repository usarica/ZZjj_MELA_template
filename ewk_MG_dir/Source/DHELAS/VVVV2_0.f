C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Metric(1,4)*Metric(2,3) + Metric(1,3)*Metric(2,4) - 2*Metric(1,2)
C     *Metric(3,4)
C     
      SUBROUTINE VVVV2_0(V1, V2, V3, V4, COUP,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 V2(*)
      COMPLEX*16 TMP12
      COMPLEX*16 V3(*)
      COMPLEX*16 TMP10
      COMPLEX*16 TMP17
      COMPLEX*16 TMP6
      COMPLEX*16 V4(*)
      COMPLEX*16 VERTEX
      COMPLEX*16 COUP
      COMPLEX*16 TMP19
      COMPLEX*16 V1(*)
      COMPLEX*16 TMP18
      TMP19 = (V3(3)*V4(3)-V3(4)*V4(4)-V3(5)*V4(5)-V3(6)*V4(6))
      TMP18 = (V2(3)*V4(3)-V2(4)*V4(4)-V2(5)*V4(5)-V2(6)*V4(6))
      TMP17 = (V1(3)*V4(3)-V1(4)*V4(4)-V1(5)*V4(5)-V1(6)*V4(6))
      TMP6 = (V2(3)*V1(3)-V2(4)*V1(4)-V2(5)*V1(5)-V2(6)*V1(6))
      TMP10 = (V3(3)*V1(3)-V3(4)*V1(4)-V3(5)*V1(5)-V3(6)*V1(6))
      TMP12 = (V3(3)*V2(3)-V3(4)*V2(4)-V3(5)*V2(5)-V3(6)*V2(6))
      VERTEX = COUP*-1D0*(-2D0 * CI*(TMP6*TMP19)+CI*(TMP12*TMP17
     $ +TMP10*TMP18))
      END

