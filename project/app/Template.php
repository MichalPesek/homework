<?php
/**
 * class template
 */
class Template
{
    private $filename;
    private $data;
    /**
     *
     * @param string $filename
     */
    public function __construct(string $filename)
    {
        $this->filename = $filename;
        $this->data = [];
    }
    /**
     *
     * @param array $data
     * @return Template
     */
    public function data(array $data): Template
    {
        $this->data = $data;
        return $this;
    }
    /**
     *
     * @return string
     */
    public function render(): string
    {
        if (!file_exists(TMPLT_DIR . $this->filename)) {
            return "";
        }
        $content = file_get_contents(TMPLT_DIR . $this->filename);
        foreach ($this->data as $key => $val) {
            $content = str_replace('{' . $key . '}', $val, $content);
        }
        return $content;
    }
}
