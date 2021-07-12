import 'package:freezed_annotation/freezed_annotation.dart';



part 'domain_response.freezed.dart';

@freezed
abstract class DomainResponse<D> with _$DomainResponse<D> {
  const factory DomainResponse.success(D data) = DataResponse;
  const factory DomainResponse.failure(String failure) = FailureResponse;
}

