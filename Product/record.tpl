<div fx:template="record" fx:of="record" fx:b="record type_product" fx:name="Default product record" fx:with="$item">
    {@image_width type="number" default="700" label="Ширина картинки"}
    {@show_name type="checkbox" default="1" label="Показать название"}
    
    {set $image_size = 'max-width: ' . $image_width . '; max-height: '.$image_width}
    <div fx:e="image">
        <img src="{$image | fx::image : $image_size}" alt="{$name}" />
    </div>
    <div fx:e="data">
        <div fx:if="$show_name" fx:e="name">{$name /}</div>
        <div fx:e="description">{$description}</div>
        <div fx:e="price" fx:b="price" fx:aif="$price">
            <span fx:e="title">{%price_title}Price:{/%}</span>
            <span fx:e="value">{$price}</span>&nbsp;<span fx:e="currency">{%currency}USD{/%}</span>
        </div>
        <div fx:e="full-text">{$full_text}</div>
    </div>
</div>