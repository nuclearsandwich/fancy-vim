# Test Comment Highlighting
# This file tests vim syntax highlighting. Sadly I can't actually automate
# this test so I must make a visual appraisal.

require: "test_require_keyword_highlight"

TEST_CONSTANT_HIGHLIGHTING = 1

class TestLiteralSyntaxHighlighting {
  def test_string_no_interp_highlighting {
    "test string with embedded escaped \"  double quote"
  }

  def test_string_with_interpolation {
    "Sixty-four modulo three: #{64 % 3}"
  }

  def test_heredoc_highlighting {
    """
    This is a heredocument
    """
  }

  def test_symbol_highlighting {
    '|foobar:=o--^
    'foobar
    'foobar?
    'foobar:
    'foobar=
    'foobar-baz
  }

  def test_integer_highlighting {
    121
  }

  def test_negative_integer_highlighting {
    -9
  }

  def test_float_highlighting {
    1.61803

  def test_negative_float_highlighting {
    -0.000001
  }

  def test_no_-_operator_highlighting {
    four = 4
    four-2
    2-3
    3-four
  }
}

class TestKeywordSyntaxHighlighting {
  def test_error_keywords_highlighting {
    try {
     'code
    } catch {
      'bar
      retry
    } finally {
    }
  }

  def test_return_keyword_highlighting {
    return
  }

  def test_return_local_keyword_highlighting {
    return_local
  }

  def test_match_case_stab_keyword_highlighting: value {
    match value {
      case true -> "win"
      case false -> "lose"
    }
  }

  def test_hashrocket_keyword_highlighting {
    <[ 'foo => 'bar ]>
  }
}

class TestVariableSyntaxHighlighting
  def test_true_and_false {
    true || false
  }

  def test_nil_highlighting {
    nil
  }

  def test_self_keyword_highlighting {
    self
  }

  def test_super_keyword_highlighting {
    super
  }

  def test_class_variable_highlighting {
    @@class_variable
  }

  def test_class_variable_highlighting {
    @class_information
  }

  def test_block_variable_highlighting {
    true if_true: |x, y| { x + y }
  }
}

