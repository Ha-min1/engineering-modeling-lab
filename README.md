# Engineering Modeling Lab

수치해석 알고리즘을 코드로 구현하고, 파라메트릭 CAD 모델을 설계·검증하는 개인 공학 모델링 실습실입니다. MATLAB, GNU Octave, OpenSCAD를 사용해 수업에서 배운 개념을 재현 가능한 코드와 실행 가능한 모델로 발전시키고, 결과를 포트폴리오로 기록합니다.

건국대학교 자율전공학부 1학년으로 전기전자공학부 진학을 준비하며, 코드 기반 공학 모델링과 시뮬레이션을 탐구하고 있습니다. [개인 포트폴리오](https://hamin-portfolio.vercel.app)에서도 관련 작업을 확인할 수 있습니다.

## 프로젝트 목표

- **수치해석**: Steven C. Chapra의 *Applied Numerical Methods with MATLAB*을 바탕으로 선형대수, 상미분방정식(ODE), 오차 분석 등의 방법을 `.m` 파일로 구현하고 MATLAB 및 GNU Octave에서 실험합니다.
- **파라메트릭 CAD**: OpenSCAD로 치수와 매개변수에 따라 변경 가능한 부품 및 조립 모델을 설계하고, CLI 렌더링으로 STL 파일을 생성·검증합니다.
- **재현 가능한 개발**: GitHub Codespaces와 CLI 중심의 작업 흐름으로 코드 실행과 모델 생성을 쉽게 재현합니다.

## 기술 스택

| 기술 | 활용 |
| --- | --- |
| MATLAB | 수치해석 코드 구현 및 실행 |
| GNU Octave | MATLAB 호환 `.m` 코드의 오픈소스 실행·검증 |
| OpenSCAD | 코드 기반 파라메트릭 3D 모델링 및 STL 내보내기 |
| GitHub Codespaces | Ubuntu 기반 개발 환경에서 코딩, 실행 및 렌더링 |

## 디렉터리 구조

```text
.
├── .devcontainer/
│   └── devcontainer.json
├── numerical-methods/
│   ├── linear-algebra/
│   │   └── hello_num.m
│   ├── ordinary-differential-equations/
│   └── error-analysis/
└── parametric-cad/
    ├── parts/
    │   └── sample_part.scad
    ├── assemblies/
    └── exports/
```

- `numerical-methods/`: 주제별 수치해석 구현을 정리합니다. `hello_num.m`은 Octave와 MATLAB에서 모두 실행 가능한 시작 예제입니다.
- `parametric-cad/parts/`: 재사용 가능한 개별 CAD 부품을 보관합니다. `sample_part.scad`는 치수를 조정할 수 있는 구멍 2개짜리 플레이트입니다.
- `parametric-cad/assemblies/`: 여러 부품을 조합한 모델을 보관합니다.
- `parametric-cad/exports/`: 렌더링 결과 STL 파일을 저장합니다.

## 시작하기

GitHub에서 **Code → Codespaces → Create codespace**를 선택하면 `.devcontainer/devcontainer.json` 설정으로 개발 환경이 만들어집니다. 컨테이너 생성 후 MATLAB 엔진 Feature가 적용되고, `postCreateCommand`가 GNU Octave와 OpenSCAD를 설치합니다.

저장소 루트에서 예제를 실행합니다.

### GNU Octave

```bash
octave --quiet numerical-methods/linear-algebra/hello_num.m
```

### MATLAB

```bash
matlab -batch "run('numerical-methods/linear-algebra/hello_num.m')"
```

MATLAB 실행에는 유효한 MATLAB 라이선스 또는 사용 권한이 필요합니다. MATLAB을 사용할 수 없는 환경에서는 Octave로 같은 `.m` 예제를 실행할 수 있습니다.

### OpenSCAD STL 내보내기

```bash
openscad -o parametric-cad/exports/sample_part.stl parametric-cad/parts/sample_part.scad
```

생성된 STL 파일은 3D 뷰어 또는 후속 슬라이서·메시 검사 도구에서 확인할 수 있습니다. OpenSCAD 소스의 매개변수를 바꾸면 부품 치수를 조정할 수 있습니다.

## 진행 기록

수치해석 주제와 CAD 모델을 추가하면서 구현 방법, 입력 조건, 검증 결과 및 배운 점을 각 예제와 함께 정리합니다.
