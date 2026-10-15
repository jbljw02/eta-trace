# Eta Trace

- _TBD_

## 준비

- [공식 설치 안내](https://docs.astral.sh/uv/getting-started/installation/)에 따라 `uv`를 설치해 주세요.
- `make` 명령을 사용할 수 있는 환경을 준비해 주세요.
- 저장소 루트에서 아래 명령을 실행해 주세요.
- `.python-version`에 지정된 Python 3.13을 사용해 주세요.

## 환경 설치

```bash
make install
```

`make install`로 `uv.lock`에 기록된 의존성과 개발 도구를 `.venv/`에 설치해 주세요. 실행과 코드 검사에는 가상환경을 직접 활성화하지 않고 아래 `make` 명령을 사용해 주세요.

## 실행

```bash
make start
```

다음 출력으로 실행을 확인해 주세요.

```text
eta-trace 실행 환경이 준비되었습니다.
```

## 코드 정리 및 검사

```bash
make lint
```

`make lint`로 코드 포맷을 자동 정리한 뒤 기본 오류·사용하지 않는 import·import 정렬을 검사해 주세요. 이 명령은 파일을 수정할 수 있습니다.

## 의존성 관리

실행에 필요한 라이브러리와 개발 도구를 구분하여 추가해 주세요.

```bash
uv add <패키지명>
uv add --dev <개발 도구명>
```

의존성 변경 시 `pyproject.toml`과 `uv.lock`을 함께 Git에 포함해 주세요. `uv.lock`은 직접 수정하지 말아 주세요.

## 디렉터리

- `src/eta_trace/`: Python 패키지와 실행 진입점
- `docs/plan/`: 작업 계획 템플릿과 개별 작업 문서
- `.github/`: PR 템플릿
