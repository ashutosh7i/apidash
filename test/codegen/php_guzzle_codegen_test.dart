import 'package:apidash/codegen/codegen.dart';
import 'package:apidash/consts.dart';
import 'package:test/test.dart';
import '../request_models.dart';

void main() {
  final codeGen = Codegen();

  group('GET Request', () {
    test('GET 1', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$client = new Client();

$request = new Request('get', 'https://api.apidash.dev'  );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(CodegenLanguage.phpGuzzle, requestModelGet1, "https"),
          expectedCode);
    });

    test('GET 2', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$queryParams = [
				'code' => 'US'
];
$queryParamsStr = '?' . http_build_query($queryParams);

$client = new Client();

$request = new Request('get', 'https://api.apidash.dev/country/data'. $queryParamsStr  );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(CodegenLanguage.phpGuzzle, requestModelGet2, "https"),
          expectedCode);
    });

    test('GET 3', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$queryParams = [
				'code' => 'IND'
];
$queryParamsStr = '?' . http_build_query($queryParams);

$client = new Client();

$request = new Request('get', 'https://api.apidash.dev/country/data'. $queryParamsStr  );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(CodegenLanguage.phpGuzzle, requestModelGet3, "https"),
          expectedCode);
    });

    test('GET 4', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$queryParams = [
				'num' => '8700000',
				'digits' => '3',
				'system' => 'SS',
				'add_space' => 'true',
				'trailing_zeros' => 'true'
];
$queryParamsStr = '?' . http_build_query($queryParams);

$client = new Client();

$request = new Request('get', 'https://api.apidash.dev/humanize/social'. $queryParamsStr  );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(CodegenLanguage.phpGuzzle, requestModelGet4, "https"),
          expectedCode);
    });

    test('GET 5', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$headers = [
				'User-Agent' => 'Test Agent'
];

$client = new Client();

$request = new Request('get', 'https://api.github.com/repos/foss42/apidash' , $headers, );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(CodegenLanguage.phpGuzzle, requestModelGet5, "https"),
          expectedCode);
    });

    test('GET 6', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$queryParams = [
				'raw' => 'true'
];
$queryParamsStr = '?' . http_build_query($queryParams);

$headers = [
				'User-Agent' => 'Test Agent'
];

$client = new Client();

$request = new Request('get', 'https://api.github.com/repos/foss42/apidash'. $queryParamsStr , $headers, );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(CodegenLanguage.phpGuzzle, requestModelGet6, "https"),
          expectedCode);
    });

    test('GET 7', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$client = new Client();

$request = new Request('get', 'https://api.apidash.dev'  );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(CodegenLanguage.phpGuzzle, requestModelGet7, "https"),
          expectedCode);
    });

    test('GET 8', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$queryParams = [
				'raw' => 'true'
];
$queryParamsStr = '?' . http_build_query($queryParams);

$headers = [
				'User-Agent' => 'Test Agent'
];

$client = new Client();

$request = new Request('get', 'https://api.github.com/repos/foss42/apidash'. $queryParamsStr , $headers, );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(CodegenLanguage.phpGuzzle, requestModelGet8, "https"),
          expectedCode);
    });

    test('GET 9', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$queryParams = [
				'num' => '8700000',
				'add_space' => 'true'
];
$queryParamsStr = '?' . http_build_query($queryParams);

$client = new Client();

$request = new Request('get', 'https://api.apidash.dev/humanize/social'. $queryParamsStr  );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(CodegenLanguage.phpGuzzle, requestModelGet9, "https"),
          expectedCode);
    });

    test('GET 10', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$headers = [
				'User-Agent' => 'Test Agent'
];

$client = new Client();

$request = new Request('get', 'https://api.apidash.dev/humanize/social' , $headers, );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(
            CodegenLanguage.phpGuzzle,
            requestModelGet10,
            "https",
          ),
          expectedCode);
    });

    test('GET 11', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$queryParams = [
				'num' => '8700000',
				'digits' => '3'
];
$queryParamsStr = '?' . http_build_query($queryParams);

$headers = [
				'User-Agent' => 'Test Agent'
];

$client = new Client();

$request = new Request('get', 'https://api.apidash.dev/humanize/social'. $queryParamsStr , $headers, );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(
              CodegenLanguage.phpGuzzle, requestModelGet11, "https"),
          expectedCode);
    });

    test('GET 12', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$client = new Client();

$request = new Request('get', 'https://api.apidash.dev/humanize/social'  );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(
              CodegenLanguage.phpGuzzle, requestModelGet12, "https"),
          expectedCode);
    });
  });

  group('HEAD Request', () {
    test('HEAD 1', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$client = new Client();

$request = new Request('head', 'https://api.apidash.dev'  );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(
              CodegenLanguage.phpGuzzle, requestModelHead1, "https"),
          expectedCode);
    });

    test('HEAD 2', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$client = new Client();

$request = new Request('head', 'http://api.apidash.dev'  );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(CodegenLanguage.phpGuzzle, requestModelHead2, "http"),
          expectedCode);
    });
  });

  group('POST Request', () {
    test('POST 1', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$headers = [
				'Content-Type' => 'text/plain'
];

$body = "{\n\"text\": \"I LOVE Flutter\"\n}";

$client = new Client();

$request = new Request('post', 'https://api.apidash.dev/case/lower' , $headers,  $body);
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(
              CodegenLanguage.phpGuzzle, requestModelPost1, "https"),
          expectedCode);
    });

    test('POST 2', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$headers = [
				'Content-Type' => 'application/json'
];

$body = "{\n\"text\": \"I LOVE Flutter\",\n\"flag\": null,\n\"male\": true,\n\"female\": false,\n\"no\": 1.2,\n\"arr\": [\"null\", \"true\", \"false\", null]\n}";

$client = new Client();

$request = new Request('post', 'https://api.apidash.dev/case/lower' , $headers,  $body);
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(
              CodegenLanguage.phpGuzzle, requestModelPost2, "https"),
          expectedCode);
    });

    test('POST 3', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$headers = [
				'Content-Type' => 'application/json',
				'User-Agent' => 'Test Agent'
];

$body = "{\n\"text\": \"I LOVE Flutter\"\n}";

$client = new Client();

$request = new Request('post', 'https://api.apidash.dev/case/lower' , $headers,  $body);
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(
              CodegenLanguage.phpGuzzle, requestModelPost3, "https"),
          expectedCode);
    });
  });

  group('PUT Request', () {
    test('PUT 1', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$headers = [
				'Content-Type' => 'application/json'
];

$body = "{\n\"name\": \"morpheus\",\n\"job\": \"zion resident\"\n}";

$client = new Client();

$request = new Request('put', 'https://reqres.in/api/users/2' , $headers,  $body);
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(CodegenLanguage.phpGuzzle, requestModelPut1, "https"),
          expectedCode);
    });
  });

  group('PATCH Request', () {
    test('PATCH 1', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$headers = [
				'Content-Type' => 'application/json'
];

$body = "{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}";

$client = new Client();

$request = new Request('patch', 'https://reqres.in/api/users/2' , $headers,  $body);
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(
              CodegenLanguage.phpGuzzle, requestModelPatch1, "https"),
          expectedCode);
    });
  });

  group('DELETE Request', () {
    test('DELETE 1', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$client = new Client();

$request = new Request('delete', 'https://reqres.in/api/users/2'  );
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(
              CodegenLanguage.phpGuzzle, requestModelDelete1, "https"),
          expectedCode);
    });

    test('DELETE 2', () {
      const expectedCode = r"""use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;


$headers = [
				'Content-Type' => 'application/json'
];

$body = "{\n\"name\": \"marfeus\",\n\"job\": \"accountant\"\n}";

$client = new Client();

$request = new Request('delete', 'https://reqres.in/api/users/2' , $headers,  $body);
$res = $client->sendAsync($request)->wait();
echo $res->getBody();""";
      expect(
          codeGen.getCode(
              CodegenLanguage.phpGuzzle, requestModelDelete2, "https"),
          expectedCode);
    });
  });
}