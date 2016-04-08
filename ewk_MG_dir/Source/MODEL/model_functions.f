ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c      written by the UFO converter
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      DOUBLE COMPLEX FUNCTION COND(CONDITION,TRUECASE,FALSECASE)
      IMPLICIT NONE
      DOUBLE COMPLEX CONDITION,TRUECASE,FALSECASE
      IF(CONDITION.EQ.(0.0D0,0.0D0)) THEN
        COND=TRUECASE
      ELSE
        COND=FALSECASE
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION CONDIF(CONDITION,TRUECASE,FALSECASE)
      IMPLICIT NONE
      LOGICAL CONDITION
      DOUBLE COMPLEX TRUECASE,FALSECASE
      IF(CONDITION) THEN
        CONDIF=TRUECASE
      ELSE
        CONDIF=FALSECASE
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION RECMS(CONDITION,EXPR)
      IMPLICIT NONE
      LOGICAL CONDITION
      DOUBLE COMPLEX EXPR
      IF(CONDITION)THEN
        RECMS=EXPR
      ELSE
        RECMS=DCMPLX(DBLE(EXPR))
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION REGLOG(ARG)
      IMPLICIT NONE
      DOUBLE COMPLEX TWOPII
      PARAMETER (TWOPII=2.0D0*3.1415926535897932D0*(0.0D0,1.0D0))
      DOUBLE COMPLEX ARG
      IF(ARG.EQ.(0.0D0,0.0D0)) THEN
        REGLOG=(0.0D0,0.0D0)
      ELSE
        REGLOG=LOG(ARG)
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION REGLOGP(ARG)
      IMPLICIT NONE
      DOUBLE COMPLEX TWOPII
      PARAMETER (TWOPII=2.0D0*3.1415926535897932D0*(0.0D0,1.0D0))
      DOUBLE COMPLEX ARG
      IF(ARG.EQ.(0.0D0,0.0D0))THEN
        REGLOGP=(0.0D0,0.0D0)
      ELSE
        IF(DBLE(ARG).LT.0.0D0.AND.DIMAG(ARG).LT.0.0D0)THEN
          REGLOGP=LOG(ARG) + TWOPII
        ELSE
          REGLOGP=LOG(ARG)
        ENDIF
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION REGLOGM(ARG)
      IMPLICIT NONE
      DOUBLE COMPLEX TWOPII
      PARAMETER (TWOPII=2.0D0*3.1415926535897932D0*(0.0D0,1.0D0))
      DOUBLE COMPLEX ARG
      IF(ARG.EQ.(0.0D0,0.0D0))THEN
        REGLOGM=(0.0D0,0.0D0)
      ELSE
        IF(DBLE(ARG).LT.0.0D0.AND.DIMAG(ARG).GT.0.0D0)THEN
          REGLOGM=LOG(ARG) - TWOPII
        ELSE
          REGLOGM=LOG(ARG)
        ENDIF
      ENDIF
      END

      DOUBLE COMPLEX FUNCTION ARG(COMNUM)
      IMPLICIT NONE
      DOUBLE COMPLEX COMNUM
      DOUBLE COMPLEX IIM
      IIM = (0.0D0,1.0D0)
      IF(COMNUM.EQ.(0.0D0,0.0D0)) THEN
        ARG=(0.0D0,0.0D0)
      ELSE
        ARG=LOG(COMNUM/ABS(COMNUM))/IIM
      ENDIF
      END
